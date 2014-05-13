c = require './../schemas'

module.exports =
  EarnedAchievementSchema =
    type: 'object'
    properties:
      user: c.objectId
        links:
          [
            {
              rel: 'extra'
              href: "/db/user/{($)}"
            }
          ]
      achievement: c.objectId
        links:
          [
            {
              rel: 'extra'
              href: '/db/user/{($)}'
            }
          ]
      achievedAmount:
        type: 'number'
      notified:
        type: 'boolean'