(import "shared/default_format.jsonnet") + {
  document_type: "government",
  definitions: {
    details: {
      type: "object",
      additionalProperties: false,
      properties: {
        start_date: {
          type: "string",
          format: "date-time",
        },
        end_date: {
          type: [
            "string",
            "null",
          ],
          format: "date-time",
        },
        current: {
          type: "boolean",
        },
      },
    },
  },
}
