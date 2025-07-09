# Step 2: Connecting Bundles

This bundle demonstrates how to connect bundles together using Massdriver's artifact system:

- Understanding artifact definitions and schemas
- Publishing reusable data contracts
- Producing artifacts from bundles
- Consuming artifacts in other bundles
- Visual bundle connections in the UI

## Follow the Guide

This bundle is designed to be used with our step-by-step documentation:

**📖 [Step 2: Connecting Bundles](https://docs.massdriver.cloud/getting-started/connecting-bundles)**

The guide will teach you how to:
1. Create and publish artifact definitions
2. Update your Step 1 bundle to produce artifacts
3. Deploy this bundle to consume those artifacts
4. Connect bundles visually in the Massdriver UI

## What This Bundle Does

This bundle takes the outputs from Step 1 (pet name, password, shuffled words) and transforms them into new resources:
- Extended pet names using the original as a prefix
- Port numbers derived from password length
- Reshuffled word arrays

## Prerequisites

You must complete [Step 1: Deploying Your First Bundle](https://docs.massdriver.cloud/getting-started/deploying-first-bundle) before using this bundle, as it depends on the artifacts produced by that bundle.

## Next Steps

After completing this step, you'll understand bundle composition and be ready to build more complex architectures with Massdriver!
