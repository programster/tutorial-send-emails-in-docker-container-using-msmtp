#!/bin/bash

echo "Sending an email to ${TO_EMAIL}..."
echo "Test email body here" | mail -s "Test Email" ${TO_EMAIL}
echo "done!"
echo ""