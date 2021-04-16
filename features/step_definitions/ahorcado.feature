Feature: Ahorcado

Scenario: Bienvenida
When Inicio la aplicacion
Then Muestra "Bienvenido/a Ahorcado"

Scenario: Muestra tamaño de palabra
When Inicio la aplicacion
Then Muestra palabra "-----"

Scenario: Ingresa una letra correcta
Given Inicio la aplicacion
When Adivinar una letra "s"
Then Muestra palabra "s----"
