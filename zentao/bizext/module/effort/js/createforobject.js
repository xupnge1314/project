function changeDate(objectType, objectID, account, date)
{
    date = date.replace(/\-/g, '');
    link = createLink('effort', 'createforobject', 'objectType=' + objectType + '&objectID=' + objectID + '&account=' +account + '&date=' + date);
    location.href=link;
}
