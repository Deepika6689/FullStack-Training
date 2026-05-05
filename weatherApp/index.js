let button = document.getElementById("btn");

button.addEventListener("click", () => {
    let city = document.getElementById("city").value;

    let apiKey = "d88fe50f06d1788da7dddc1f9493dc4d";  
    let api = `https://api.openweathermap.org/data/2.5/weather?q=${city}&appid=${apiKey}&units=metric`;

    let result = document.getElementById("result");

    fetch(api)
        .then(x => x.json())
        .then(y => {
            if (y.cod !== 200) {
                alert("City not found");
                return;
            }

            result.innerHTML = `
                <h2>${y.name}, ${y.sys.country}</h2>
                <p>Temperature: 🌡️ ${y.main.temp} °C</p>
                <p>Humidity: 🌧️ ${y.main.humidity}%</p>
                <p>Weather: ${y.weather[0].description}</p>
            `;
        })
        .catch(err => {
            console.log(err);
        });
});
