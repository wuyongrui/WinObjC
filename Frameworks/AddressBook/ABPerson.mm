//******************************************************************************
//
// Copyright (c) 2016 Microsoft Corporation. All rights reserved.
//
// This code is licensed under the MIT License (MIT).
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//
//******************************************************************************

#import <AddressBook/ABPerson.h>

#import <StubReturn.h>
#import "AssertARCEnabled.h"

const ABPropertyID kABPersonFirstNameProperty = 101;
const ABPropertyID kABPersonLastNameProperty = 102;
const ABPropertyID kABPersonMiddleNameProperty = 103;
const ABPropertyID kABPersonPrefixProperty = 104;
const ABPropertyID kABPersonSuffixProperty = 105;
const ABPropertyID kABPersonNicknameProperty = 106;
const ABPropertyID kABPersonFirstNamePhoneticProperty = 107;
const ABPropertyID kABPersonLastNamePhoneticProperty = 108;
const ABPropertyID kABPersonMiddleNamePhoneticProperty = 109;
const ABPropertyID kABPersonOrganizationProperty = 110;
const ABPropertyID kABPersonJobTitleProperty = 111;
const ABPropertyID kABPersonDepartmentProperty = 112;
const ABPropertyID kABPersonEmailProperty = 113;
const ABPropertyID kABPersonBirthdayProperty = 114;
const ABPropertyID kABPersonNoteProperty = 115;
const ABPropertyID kABPersonCreationDateProperty = 116;
const ABPropertyID kABPersonModificationDateProperty = 117;
const ABPropertyID kABPersonAddressProperty = 118;
const CFStringRef kABPersonAddressStreetKey = static_cast<const CFStringRef>(@"ABPersonAddressStreetKey");
const CFStringRef kABPersonAddressCityKey = static_cast<const CFStringRef>(@"ABPersonAddressCityKey");
const CFStringRef kABPersonAddressStateKey = static_cast<const CFStringRef>(@"ABPersonAddressStateKey");
const CFStringRef kABPersonAddressZIPKey = static_cast<const CFStringRef>(@"ABPersonAddressZIPKey");
const CFStringRef kABPersonAddressCountryKey = static_cast<const CFStringRef>(@"ABPersonAddressCountryKey");
const CFStringRef kABPersonAddressCountryCodeKey = static_cast<const CFStringRef>(@"ABPersonAddressCountryCodeKey");
const ABPropertyID kABPersonDateProperty = 119;
const CFStringRef kABPersonAnniversaryLabel = static_cast<const CFStringRef>(@"ABPersonAnniversaryLabel");
const ABPropertyID kABPersonKindProperty = 120;
/** @Status Stub */
const CFNumberRef kABPersonKindPerson = StubConstant();
/** @Status Stub */
const CFNumberRef kABPersonKindOrganization = StubConstant();
const ABPropertyID kABPersonPhoneProperty = 121;
const CFStringRef kABPersonPhoneMobileLabel = static_cast<const CFStringRef>(@"ABPersonPhoneMobileLabel");
const CFStringRef kABPersonPhoneIPhoneLabel = static_cast<const CFStringRef>(@"ABPersonPhoneIPhoneLabel");
const CFStringRef kABPersonPhoneMainLabel = static_cast<const CFStringRef>(@"ABPersonPhoneMainLabel");
const CFStringRef kABPersonPhoneHomeFAXLabel = static_cast<const CFStringRef>(@"ABPersonPhoneHomeFAXLabel");
const CFStringRef kABPersonPhoneWorkFAXLabel = static_cast<const CFStringRef>(@"ABPersonPhoneWorkFAXLabel");
const CFStringRef kABPersonPhoneOtherFAXLabel = static_cast<const CFStringRef>(@"ABPersonPhoneOtherFAXLabel");
const CFStringRef kABPersonPhonePagerLabel = static_cast<const CFStringRef>(@"ABPersonPhonePagerLabel");
const ABPropertyID kABPersonInstantMessageProperty = 122;
const CFStringRef kABPersonInstantMessageServiceKey = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceKey");
const CFStringRef kABPersonInstantMessageUsernameKey = static_cast<const CFStringRef>(@"ABPersonInstantMessageUsernameKey");
const CFStringRef kABPersonInstantMessageServiceYahoo = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceYahoo");
const CFStringRef kABPersonInstantMessageServiceJabber = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceJabber");
const CFStringRef kABPersonInstantMessageServiceMSN = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceMSN");
const CFStringRef kABPersonInstantMessageServiceICQ = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceICQ");
const CFStringRef kABPersonInstantMessageServiceAIM = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceAIM");
const CFStringRef kABPersonInstantMessageServiceQQ = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceQQ");
const CFStringRef kABPersonInstantMessageServiceGoogleTalk = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceGoogleTalk");
const CFStringRef kABPersonInstantMessageServiceSkype = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceSkype");
const CFStringRef kABPersonInstantMessageServiceFacebook = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceFacebook");
const CFStringRef kABPersonInstantMessageServiceGaduGadu = static_cast<const CFStringRef>(@"ABPersonInstantMessageServiceGaduGadu");
const ABPropertyID kABPersonSocialProfileProperty = 123;
const CFStringRef kABPersonSocialProfileURLKey = static_cast<const CFStringRef>(@"ABPersonSocialProfileURLKey");
const CFStringRef kABPersonSocialProfileServiceKey = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceKey");
const CFStringRef kABPersonSocialProfileUsernameKey = static_cast<const CFStringRef>(@"ABPersonSocialProfileUsernameKey");
const CFStringRef kABPersonSocialProfileUserIdentifierKey = static_cast<const CFStringRef>(@"ABPersonSocialProfileUserIdentifierKey");
const CFStringRef kABPersonSocialProfileServiceTwitter = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceTwitter");
const CFStringRef kABPersonSocialProfileServiceSinaWeibo = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceSinaWeibo");
const CFStringRef kABPersonSocialProfileServiceGameCenter = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceGameCenter");
const CFStringRef kABPersonSocialProfileServiceFacebook = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceFacebook");
const CFStringRef kABPersonSocialProfileServiceMyspace = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceMyspace");
const CFStringRef kABPersonSocialProfileServiceLinkedIn = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceLinkedIn");
const CFStringRef kABPersonSocialProfileServiceFlickr = static_cast<const CFStringRef>(@"ABPersonSocialProfileServiceFlickr");
const ABPropertyID kABPersonURLProperty = 124;
const CFStringRef kABPersonHomePageLabel = static_cast<const CFStringRef>(@"ABPersonHomePageLabel");
const ABPropertyID kABPersonRelatedNamesProperty = 125;
const CFStringRef kABPersonMotherLabel = static_cast<const CFStringRef>(@"ABPersonMotherLabel");
const CFStringRef kABPersonFatherLabel = static_cast<const CFStringRef>(@"ABPersonFatherLabel");
const CFStringRef kABPersonParentLabel = static_cast<const CFStringRef>(@"ABPersonParentLabel");
const CFStringRef kABPersonSisterLabel = static_cast<const CFStringRef>(@"ABPersonSisterLabel");
const CFStringRef kABPersonBrotherLabel = static_cast<const CFStringRef>(@"ABPersonBrotherLabel");
const CFStringRef kABPersonChildLabel = static_cast<const CFStringRef>(@"ABPersonChildLabel");
const CFStringRef kABPersonFriendLabel = static_cast<const CFStringRef>(@"ABPersonFriendLabel");
const CFStringRef kABPersonSpouseLabel = static_cast<const CFStringRef>(@"ABPersonSpouseLabel");
const CFStringRef kABPersonPartnerLabel = static_cast<const CFStringRef>(@"ABPersonPartnerLabel");
const CFStringRef kABPersonManagerLabel = static_cast<const CFStringRef>(@"ABPersonManagerLabel");
const CFStringRef kABPersonAssistantLabel = static_cast<const CFStringRef>(@"ABPersonAssistantLabel");
const CFStringRef kABWorkLabel = static_cast<const CFStringRef>(@"ABWorkLabel");
const CFStringRef kABHomeLabel = static_cast<const CFStringRef>(@"ABHomeLabel");
const CFStringRef kABOtherLabel = static_cast<const CFStringRef>(@"ABOtherLabel");
const ABPropertyID kABPersonAlternateBirthdayProperty = 126;
const CFStringRef kABPersonAlternateBirthdayCalendarIdentifierKey =
    static_cast<const CFStringRef>(@"ABPersonAlternateBirthdayCalendarIdentifierKey");
const CFStringRef kABPersonAlternateBirthdayEraKey = static_cast<const CFStringRef>(@"ABPersonAlternateBirthdayEraKey");
const CFStringRef kABPersonAlternateBirthdayYearKey = static_cast<const CFStringRef>(@"ABPersonAlternateBirthdayYearKey");
const CFStringRef kABPersonAlternateBirthdayMonthKey = static_cast<const CFStringRef>(@"ABPersonAlternateBirthdayMonthKey");
const CFStringRef kABPersonAlternateBirthdayIsLeapMonthKey = static_cast<const CFStringRef>(@"ABPersonAlternateBirthdayIsLeapMonthKey");
const CFStringRef kABPersonAlternateBirthdayDayKey = static_cast<const CFStringRef>(@"ABPersonAlternateBirthdayDayKey");

/**
 @Status Stub
 @Notes
*/
ABRecordRef ABPersonCreate() {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
ABRecordRef ABPersonCreateInSource(ABRecordRef source) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFComparisonResult ABPersonComparePeopleByName(ABRecordRef person1, ABRecordRef person2, ABPersonSortOrdering ordering) {
    UNIMPLEMENTED();
    return kCFCompareEqualTo;
}

/**
 @Status Stub
 @Notes
*/
ABPropertyType ABPersonGetTypeOfProperty(ABPropertyID property) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFStringRef ABPersonCopyLocalizedPropertyName(ABPropertyID property) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
bool ABPersonSetImageData(ABRecordRef person, CFDataRef imageData, CFErrorRef* error) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFDataRef ABPersonCopyImageData(ABRecordRef person) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFDataRef ABPersonCopyImageDataWithFormat(ABRecordRef person, ABPersonImageFormat format) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
bool ABPersonHasImageData(ABRecordRef person) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
bool ABPersonRemoveImageData(ABRecordRef person, CFErrorRef* error) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFIndex ABAddressBookGetPersonCount(ABAddressBookRef addressBook) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
ABRecordRef ABAddressBookGetPersonWithRecordID(ABAddressBookRef addressBook, ABRecordID recordID) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFArrayRef ABAddressBookCopyArrayOfAllPeople(ABAddressBookRef addressBook) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSource(ABAddressBookRef addressBook, ABRecordRef source) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFArrayRef ABAddressBookCopyArrayOfAllPeopleInSourceWithSortOrdering(ABAddressBookRef addressBook,
                                                                     ABRecordRef source,
                                                                     ABPersonSortOrdering sortOrdering) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFArrayRef ABAddressBookCopyPeopleWithName(ABAddressBookRef addressBook, CFStringRef name) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFArrayRef ABPersonCopyArrayOfAllLinkedPeople(ABRecordRef person) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
ABRecordRef ABPersonCopySource(ABRecordRef person) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFStringRef ABPersonCopyCompositeNameDelimiterForRecord(ABRecordRef record) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
ABPersonSortOrdering ABPersonGetSortOrdering() {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
ABPersonCompositeNameFormat ABPersonGetCompositeNameFormat() {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
ABPersonCompositeNameFormat ABPersonGetCompositeNameFormatForRecord(ABRecordRef record) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFArrayRef ABPersonCreatePeopleInSourceWithVCardRepresentation(ABRecordRef source, CFDataRef vCardData) {
    UNIMPLEMENTED();
    return StubReturn();
}

/**
 @Status Stub
 @Notes
*/
CFDataRef ABPersonCreateVCardRepresentationWithPeople(CFArrayRef people) {
    UNIMPLEMENTED();
    return StubReturn();
}
