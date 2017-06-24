module ExpediaHelper
  def sample_json_response
    {
      "offerInfo":{
        "siteID":"1",
        "language":"en_US",
        "currency":"USD"
      },
      "userInfo":{
        "persona":{
          "personaType":"OTHERS"
        },
        "userId":"foo"
      },
      "offers":{
        "Hotel":[
          {
            "offerDateRange":{
              "travelStartDate":[
                2017,
                7,
                24
              ],
              "travelEndDate":[
                2017,
                7,
                27
              ],
              "lengthOfStay":3
            },
            "destination":{
              "regionID":"178279",
              "longName":"London (and vicinity), England, United Kingdom",
              "country":"GBR",
              "province":"England",
              "city":"London"
            },
            "hotelInfo":{
              "hotelId":"523756",
              "hotelName":"The Milestone Hotel",
              "hotelDestination":"London",
              "hotelDestinationRegionID":"178279",
              "hotelLongDestination":"London (and vicinity), England, United Kingdom",
              "hotelStreetAddress":"1 Kensington Court ",
              "hotelCity":"London",
              "hotelProvince":"England",
              "hotelCountryCode":"GBR",
              "hotelLocation":"-0.186714,51.502188",
              "hotelLatitude":51.502188,
              "hotelLongitude":-0.186714,
              "hotelStarRating":"5.0",
              "hotelGuestReviewRating":4.7,
              "travelStartDate":"07/24/2017",
              "travelEndDate":"07/27/2017",
              "hotelImageUrl":"https://images.trvl-media.com/hotels/1000000/530000/523800/523756/523756_664_t.jpg",
              "carPackageScore":16.2648,
              "description":"Located in the center of London, this family-friendly hotel is within a 10-minute walk of Kensington Palace and Royal Albert Hall. Kensington Gardens and Imperial College London are also within 15 minutes. ",
              "distanceFromUser":0.0,
              "language":"en",
              "movingAverageScore":-0.13,
              "promotionAmount":0.0,
              "promotionDescription":"",
              "promotionTag":"GDE",
              "rawAppealScore":16.2648,
              "relevanceScore":0.0,
              "statusCode":"0",
              "statusDescription":"",
              "carPackage":false,
              "allInclusive":false
            }
          }
        ]
      }
    }
  end
end
