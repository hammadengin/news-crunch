VALIDATION_SPACES_AND_ALPHABETS_ONLY = /\A[a-zA-Z][a-zA-Z\. ]*\z/
VALIDATION_SPACES_AND_ALPHANUMERIC_ONLY = /\A[[:alnum:]][a-zA-Z0-9_\.\#\' \-]{2,60}\z/
VALIDATION_PHONE_NUMBER = /\A\s*(?:\+?(\d{1,3}))?([-. (]*(\d{3})[-. )]*)?((\d{3})[-. ]*(\d{2,4})(?:[-.x ]*(\d+))?)\s*\z/
VALIDATION_ALPHANUMERIC_ONLY = /\A[a-zA-Z0-9][a-zA-Z0-9_]*\z/
PASSWORD_COMPLEXITY = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}/