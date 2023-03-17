Feature('login');

Scenario('test something',  ({ I }) => {

    this.amOnPage('http://todomvc.com/examples/react/');
    this.dontSeeElement('.todo-count');
    this.fillField('What needs to be done?', 'Write a guide');
    this.pressKey('Enter');
    I.see('Write a guide', '.todo-list');
    I.see('1 item left', '.todo-count');
});
