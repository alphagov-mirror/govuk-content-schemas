(import "shared/default_format.jsonnet") + {
  document_type: "world_location_news_article",
  definitions: (import "shared/definitions/_whitehall.jsonnet") + {
    details: {
      type: "object",
      additionalProperties: false,
      required: [
        "body",
        "government",
        "political",
      ],
      properties: {
        body: {
          "$ref": "#/definitions/body",
        },
        image: {
          "$ref": "#/definitions/image",
        },
        first_public_at: {
          "$ref": "#/definitions/first_public_at",
        },
        change_history: {
          "$ref": "#/definitions/change_history",
        },
        tags: {
          "$ref": "#/definitions/tags",
        },
        government: {
          "$ref": "#/definitions/government",
        },
        political: {
          "$ref": "#/definitions/political",
        },
        brexit_no_deal_notice: {
          "$ref": "#/definitions/brexit_no_deal_notice",
        }
      },
    },
  },
  links: (import "shared/base_links.jsonnet") + {
    government: {
      description: "The government associated with this document",
      maxItems: 1,
    },
    topical_events: "",
    worldwide_organisations: "",
    world_locations: "",
  },
}
