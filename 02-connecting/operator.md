# Step 2: Connecting Bundles

This bundle demonstrates how to connect bundles together using Massdriver's artifact system for sharing data between infrastructure components.

## What This Bundle Teaches

- **Artifact Definitions**: Creating reusable schemas for type-safe data contracts
- **Bundle Connections**: How bundles consume artifacts from other bundles
- **Data Transformation**: Using connected data to create new resources
- **Visual Connections**: Connecting bundles in the Massdriver UI
- **Dependency Management**: Required connections and deployment order

## What This Bundle Does

This bundle consumes the outputs from Step 1 (pet name, password, shuffled words) and transforms them into new resources:
- Extended pet names using the original as a prefix
- Port numbers derived from password length
- Reshuffled word arrays with new ordering
- Combined resource naming patterns

## Prerequisites

You must complete **Step 1: Deploying Your First Bundle** before using this bundle, as it depends on the artifacts produced by that bundle.

## Complete Guide

For detailed step-by-step instructions, follow our comprehensive guide:

**📖 [Step 2: Connecting Bundles](https://docs.massdriver.cloud/getting-started/connecting-bundles)**

The guide covers artifact definitions, bundle connections, and the complete workflow for connecting bundles together.

## Next Steps

After completing this step, you'll understand bundle composition and be ready to build more complex architectures with connected infrastructure components!
