-- Sicurezza per Supabase.
-- Supabase espone automaticamente le tabelle del database tramite API REST pubblica.
-- Qui blocchiamo quell'accesso: l'app Streamlit si collega direttamente al database
-- con la stringa di connessione (che sta solo nei Secrets), quindi non ne ha bisogno.

DO $$
DECLARE r record;
BEGIN
  -- Row Level Security attiva su tutte le tabelle (nessuna policy = nessun accesso via API)
  FOR r IN SELECT tablename FROM pg_tables WHERE schemaname = 'public' LOOP
    EXECUTE format('ALTER TABLE public.%I ENABLE ROW LEVEL SECURITY', r.tablename);
  END LOOP;

  -- Ruoli "anon" e "authenticated" (esistono solo su Supabase): nessun privilegio su tabelle e viste
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'anon') THEN
    EXECUTE 'REVOKE ALL ON ALL TABLES IN SCHEMA public FROM anon';
  END IF;
  IF EXISTS (SELECT 1 FROM pg_roles WHERE rolname = 'authenticated') THEN
    EXECUTE 'REVOKE ALL ON ALL TABLES IN SCHEMA public FROM authenticated';
  END IF;
END $$;
