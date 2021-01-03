using my.bookshop as my from '../db/data-model';

service CatalogService {
    entity Books as projection on my.Books;
}

annotate CatalogService.Books with @odata.draft.enabled;

annotate CatalogService.Books with @(UI : {
    SelectionFields : [ID],
    LineItem        : [
    {Value : ID,
    Label:'Book ID'},
    {Value : title,
    Label:'Book Title'},
    {Value : stock,
    Label:'Stock Left'},

    ],
		HeaderInfo: {
			TypeName: 'title', TypeNamePlural: 'title',
			Title: {
				Label: 'Book Title', //A label is possible but it is not considered on the ObjectPage yet
				Value: title
			}
		}
});
