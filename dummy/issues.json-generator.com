[
  '{{repeat(5, 7)}}',
  {
    _id: '{{objectId()}}',
    priority: '{{integer(1, 5)}}',
    type: '{{random("Bug", "Feature", "Task")}}',
    summary: '{{lorem(1, "sentences")}}',
    assigned_to: {
      id: '{{index()}}',
      first_name: '{{firstName()}}',
      surname: '{{surname()}}'
    },
    last_modified: '{{date(new Date(2015, 0, 1), new Date(), "YYYY-MM-ddThh:mm:ssZ")}}',
    reported: '{{date(new Date(2015, 0, 1), new Date(), "YYYY-MM-ddThh:mm:ssZ")}}',
    description: '{{lorem(3, "paragraphs")}}'
  }
]
