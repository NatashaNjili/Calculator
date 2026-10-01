#!/bin/bash

# ============================================================
# simple-interest.sh
# A Bash script that computes Simple Interest based on
# user-provided principal, rate of interest, and time period.
# Formula: SI = (Principal × Rate × Time) / 100
# ============================================================

echo "=========================================="
echo "      Simple Interest Calculator          "
echo "=========================================="

# Prompt the user for input
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (%): " rate
read -p "Enter the time period (in years): " time

# Compute simple interest using bc for floating-point math
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Compute the total amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display results
echo "------------------------------------------"
echo "Principal Amount : $principal"
echo "Rate of Interest : $rate%"
echo "Time Period      : $time year(s)"
echo "------------------------------------------"
echo "Simple Interest  : $simple_interest"
echo "Total Amount     : $total_amount"
echo "------------------------------------------"
