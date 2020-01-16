(import "shared/default_format.jsonnet") + {
  document_type: [
    "press_release",
    "news_story",
    "government_response",
    "world_news_story",
  ],
  definitions: (import "shared/definitions/_whitehall.jsonnet") + {
    details: {
      type: "object",
      additionalProperties: false,
      required: [
        "body",
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
        emphasised_organisations: {
          "$ref": "#/definitions/emphasised_organisations",
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
    related_policies: "",
    ministers: "Deprecated. These are relations to minister people pages, this is superseded by 'people'",
    topical_events: "The topical events this content item relates to.",
    world_locations: "The world locations this content item is about.",
    worldwide_organisations: "The worldwide organisations associated with this content item.",
    roles: "Government roles that are associated with this document, typically the role part of a role association",
    people: "People that are associated with this document, typically the person part of a role association",
  },
  edition_links: (import "shared/base_edition_links.jsonnet") + {
    government: {
      description: "The government associated with this document",
      maxItems: 1,
    },
    roles: "Government roles that are associated with this document, typically the role part of a role association",
    people: "People that are associated with this document, typically the person part of a role association",
    topical_events: "The topical events this content item relates to.",
    world_locations: "The world locations this content item is about.",
    worldwide_organisations: "The worldwide organisations associated with this content item.",
    organisations: "All organisations linked to this content item. This should include lead organisations.",
    primary_publishing_organisation: {
      description: "The organisation that published the page. Corresponds to the first of the 'Lead organisations' in Whitehall, and is empty for all other publishing applications.",
      maxItems: 1,
    }
  }
}
