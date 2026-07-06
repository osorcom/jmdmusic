# jmdmusic

Aplicació que cerca artistes a la plataforma Jamendo. Creada dins del curs *"Desenvolupament d'Apps Multiplataforma amb Flutter"*.

## Configuració Inicial (Setup)

Per poder executar aquest projecte, necessites configurar una clau d'API de Jamendo.

1. Crea un fitxer anomenat `config.json` a l'arrel del projecte (al mateix nivell que el `pubspec.yaml`).
2. Afegeix-hi el teu Client ID de Jamendo amb el següent format:
   ```json
   {
     "JAMENDO_CLIENT_ID": "EL_TEU_CLIENT_ID_AQUÍ"
   }
   ```

## Execució per terminal

Estant a l'arrel del projecte, executa la comanda:

```bash
flutter run --dart-define-from-file=config.json
```

## Execució desde l'entorn de desenvolupament (visual studio code o code oss)

1. A l'arrel del projecte crea el fitxer `.vscode/launch.json` amb el contingut:
2. Afegeix el contingut:
```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Launch Jamendo App",
      "request": "launch",
      "type": "dart",
      "program": "lib/main.dart",
      "cwd": "${workspaceFolder}",
      "args": [
        "--dart-define-from-file=${workspaceFolder}/config.json"
      ]
    }
  ]
}
```
3. Executa amb `F5`.