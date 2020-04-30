# find equal
db.collections.find({ "generation":"17CY" });

# find not  equal
db.collections.find({ "generation" : { $ne : "17CYPLUYS" } });
