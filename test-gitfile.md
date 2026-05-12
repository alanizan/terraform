# Markdown Examples

This file contains a set of short, formatted Markdown examples for quick reference.

---

## Headings

# H1 Heading
## H2 Heading
### H3 Heading

## Paragraphs and Inline Code

This is a normal paragraph with an inline code example: `terraform init`.

## Lists

- Unordered list item 1
- Unordered list item 2

1. Ordered item one
2. Ordered item two

## Task List

- [x] Completed task
- [ ] Todo task

## Table

| File | Purpose |
| --- | --- |
| provider.tf | Provider configuration |
| main.tf | Main resources and modules |

## Blockquote

> This is a blockquote for quoting notes or documentation.

## Code Blocks

```bash
# Run Terraform initialization
terraform init
```

```hcl
provider "aws" {
	region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
	bucket = "my-example-bucket"
	acl    = "private"
}
```

## Image and Link

![Placeholder image](https://via.placeholder.com/150)

Reference: [Terraform docs](https://www.terraform.io/docs).

---

## Quick tips

- Use fenced code blocks for config (```hcl```).
- Keep provider and version constraints in `versions.tf`.

