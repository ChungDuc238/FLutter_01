

class Contact {
  String title;
  String iconLeft;
  String description;
  Contact(
      {required this.iconLeft, required this.title, required this.description});
}

List<Contact> contactList = [
  Contact(
      iconLeft: 'assets/images/icon_phone_contact.png',
      title: 'Phone number',
      description: '+3746589923'),
  Contact(
      iconLeft: 'assets/images/icon_email_contact.png',
      title: 'Email',
      description: 'conrad@gmail.com'),
  Contact(
      iconLeft: 'assets/images/icon_combined_project.png',
      title: 'Completed projects',
      description: '248'),
];
