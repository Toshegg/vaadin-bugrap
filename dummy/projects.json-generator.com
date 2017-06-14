[
  '{{repeat(5, 7)}}',
  {
    _id: '{{objectId()}}',
    title: '{{lorem(3, "words")}}'
  }
]
