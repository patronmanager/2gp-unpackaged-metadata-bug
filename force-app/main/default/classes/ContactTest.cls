@IsTest
public class ContactTest {
	@IsTest
	public static void testDuplicateRulesAreDisabled(){
		Contact c1 = new Contact(FirstName = 'Test', LastName = 'Human', Email = 'testhuman@example.com');
		Contact c2 = new Contact(FirstName = 'Test', LastName = 'Human', Email = 'testhuman@example.com');

		insert c1;
		insert c2;
	}
}