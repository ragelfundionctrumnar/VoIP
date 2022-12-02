db.createUser(
{  user : "tormaulbag",
    pwd : "wmakranier@mongo",
  roles : [
    {
      role : "readWrite",
        db : "voip"
    }
  ]
})
