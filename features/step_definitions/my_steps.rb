When("Inicio la aplicacion") do
    visit '/'
end
 
Then("Muestra {string}") do |titulo|
    expect(page).to have_css "h1", text: titulo
end

Then("Muestra palabra {string}") do |palabra|
    expect(page).to have_css "div#palabra", text: palabra
  end

When("Adivinar una letra {string}") do |letra|
    fill_in "letra", :with=>letra
    click_button "Adivinar"
end

Then("Muetra resultado {string}") do |resultado|
    expect(page).to have_css "div#resultado", text: resultado
  end

Then("Muestra arriesgadas {string}") do |arriesgadas|
    expect(page).to have_css "div#arriesgadas", text: arriesgadas
end