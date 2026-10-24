"""Vérifie rapidement le datapack : JSON valides + guillemets/accolades équilibrés dans les .mcfunction."""
import os, json, re, sys
root = os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), 'datapack')
bad = n = 0
for dp, _, fs in os.walk(root):
    for f in fs:
        p = os.path.join(dp, f)
        if f.endswith(('.json', '.mcmeta')):
            json.load(open(p, encoding='utf-8')); continue
        if not f.endswith('.mcfunction'): continue
        for i, l in enumerate(open(p, encoding='utf-8').read().split('\n'), 1):
            if not l: continue
            n += 1
            s = re.sub(r'\\.', '', l)
            if s.count('"') % 2 or s.count('{') != s.count('}') or s.count('[') != s.count(']'):
                print('ERREUR', p, i, l[:140]); bad += 1
print(f'{n} commandes vérifiées, {bad} erreur(s)')
sys.exit(1 if bad else 0)
