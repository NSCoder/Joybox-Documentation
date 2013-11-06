---
layout: documentation
title: Mass Data
subtitle: Physics Environment
categories: documentation
---

Represents the computed mass of a Shape or a Body. 

[more-information] For more information, see: [Shape documentation page](../shape#)

[more-information] For more information, see: [Body documentation page](../body#)

[warning In order to update the Body, first its needed to retrieve it from its Mass Data method, change the desired values and finally set it again. But be careful it contains a lot of consistency validations.]

### Mass
Gets or Sets the Mass in Kilograms:

```ruby
mass_data.mass = 2.5

p "The Mass Data mass is: #{mass_data.mass}"
```

### Center
Retrieve or Updates the Mass Data centroid in relationship to the origin:

```ruby
mass_data.center = [10, 10]
center = mass_data.center

p "The Mass Data center is: #{center.x}, #{center.y}"
```

### Metric Center
Gets or Sets the Mass Data center in Metric Coordinates.

### Rotational Inertia
Gets or Sets the Mass Data Rotational Inertia:

```ruby
mass_data.rotational_inertia = 1.2

p "The Mass Data rotational inertia is: #{mass_data.rotational_inertia}" 
```
