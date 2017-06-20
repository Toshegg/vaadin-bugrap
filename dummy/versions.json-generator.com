[
  '{{repeat(10, 30)}}',
  {
    _id: '{{objectId()}}',
    title: '{{integer(1, 10)}}.{{integer(1,10)}}.{{integer(1,10)}}'
  }
]
