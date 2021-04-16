Feature: Ahorcado

Scenario: Bienvenida
When Inicio la aplicacion
Then Muestra "Bienvenido/a Ahorcado"

Scenario: Muestra tamaño de palabra
When Inicio la aplicacion
Then Muestra palabra "- - - - -"

Scenario: Ingresa una letra correcta
Given Inicio la aplicacion
When Adivinar una letra "s"
Then Muestra palabra "s - - - -"

Scenario: Adivina palabra
Given Inicio la aplicacion
When Adivinar una letra "s"
And Adivinar una letra "c"
And Adivinar una letra "r"
And Adivinar una letra "u"
And Adivinar una letra "m"
Then Muestra palabra "s c r u m"
And  Muetra resultado "Ganaste!"

Scenario: Letras arriesgadas
Given Inicio la aplicacion
When Adivinar una letra "a"
Then Muestra arriesgadas "a"