Invariant:   neir-imm-1
Description: "If the status is not-done, a reason must be provided"
Severity:    #error
Expression:  "status != 'not-done' xor statusReason.exists()"
