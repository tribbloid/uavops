# Overview: companion computer

For advanced capabilities, we intend to build around a standard companion computer for every workload apart from maintaining telemetry and stabilising the drone.

The computer should be chosen based on the following criterion:

## SIMD capability preferred

Single instruction, multiple data (SIMD) is instrumental for most workload, many of which requires computation in linear algebra.

## Desktop processor/coprocessor preferred

Unlike other mobile or edge devices, the drone should have both Li-Po battery pack to handle surge in power consumption, and propulsion systems that drastically improve cooling. Many extensions interfaces for a desktop motherboard can be stripped down, making it only marginally heavier than its mobile counterpart.

## Real-time operating system preferred

Despite heavily relying on SIMD coprocessor under fixed clock signal, most decision and IO are still under control of a main event loop under OS scheduling.

## Should not be more expensive than a cellphone

Otherwise I will use a cellphone, despite fragmented ecosystem and threat of planned obsolesence.
