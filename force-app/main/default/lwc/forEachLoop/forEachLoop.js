import { LightningElement } from 'lwc';

export default class HelloForEach extends LightningElement {
    records = [
        {
            name: 'Bhumi',
            age: 21,
            city: 'Indore',
        },
        {
            name: 'Shreya',
            age: 22,
            city: 'Bhopal',
        },
        {
            name: 'Priya',
            age: 19,
            city: 'Rewa',
        },
    ];
}
