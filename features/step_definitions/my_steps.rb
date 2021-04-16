When("Inicio la aplicacion") do
    visit '/'
end
 
Then("Muestra {string}") do |titulo|
    expect(page).to have_css "h1", text: titulo
end

When("arriesga un numero {int}") do |valor|
    fill_in "numero", :with => valor
    click_button "Arriesgar"
end
  
Then("muestra mensaje {string}") do |mensaje|
    expect(page).to have_css "div#mensaje", text: mensaje
end