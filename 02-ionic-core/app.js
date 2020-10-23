async function getEvents() {
    let url = ' https://devfest-nantes-2018-api.cleverapps.io/blog';
    try {
        let res = await fetch(url);
        return await res.json();
    } catch (error) {
        console.log(error);
    }
}
let events = getEvents();
console.log(events)

async function renderEvents() {
    let events = await getEvents();
    let html = '';
    events.forEach(event => {
        let htmlSegment = `<div class="event">
                            <ion-card>
                            <ion-card-header>
                            <img src="https://devfest2018.gdgnantes.com${event.image}" alt="pic">
                                <ion-card-title>${event.title}</ion-card-title>
                            </ion-card-header>
            
                            <ion-card-content>
                               <strong> ${event.brief} </strong>
                            </ion-card-content>
                        </ion-card>
                        </div>`;

        html += htmlSegment;
    });

    let container = document.querySelector('.container');
    container.innerHTML = html;
}

renderEvents();