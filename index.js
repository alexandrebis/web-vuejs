Vue.component('peripherals-item', {
    props: ['peripheral'],
    template: '<li>{{ peripheral.text }}</li>'
  })

var app = new Vue({
    el: '#app',
    data: {
        message: 'Bienvenue sur la page',
        alertsActivated: false,
        peripherals: [
            { id: '0', text: 'First element' },
            { id: '1', text: 'Second element' },
            { id: '2', text: 'Third element' }
        ]
    },
    methods: {
        switchAlerts: function () {
            this.alertsActivated = !this.alertsActivated
        }
    }
});

//app.peripherals.push({ text: 'New element' });