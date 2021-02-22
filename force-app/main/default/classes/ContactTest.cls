@IsTest
public class ContactTest {
	@IsTest
	public static void testDuplicateRulesAreDisabled(){
		Contact c1 = new Contact(FirstName = 'Test', LastName = 'Human', Email = 'testhuman@example.com');
		Contact c2 = new Contact(FirstName = 'Test', LastName = 'Human', Email = 'testhuman@example.com');

		insert c1;
		//Shouldn't fail if the deactivated Contact Duplicate Rule is deployed from the unpackaged/ package dir
		insert c2;
	}
}