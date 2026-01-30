# CatBreeds
Proyecto Flutter, consumo de API Cats.


### Preparar proyecto
```bash 
fluter clean
fluter pub get
fluter pub run build_runner build --delete-conflicting-outputs
```

### Ejecutar proyecto
```bash
fluter run
```

### Ejecutar pruebas
```bash
flutter test --coverage
genhtml coverage/lcov.info -o coverage/html 
```