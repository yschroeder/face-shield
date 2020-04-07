
// Configurable

pillar_width = 2.3;
pillar_length = 3.3;
inter_layer_support_height = 0.5;

lily_pad_radius = 5;
lily_pad_height = 0.25;

// Just setting stuff up

file_path = "../stl/Covid-19 Shield v18.stl";
pillar_vertical_offset = 3;
shield_height = 20;
wall_width = 2;
mask_depth = 142.56;
mask_width = 191.48;

pillar_depth_offset = 5.8;
middle_pillar_width_offset = 29.55;

pillar_height = shield_height - 2 + (inter_layer_support_height * 2);

module shield_stack(count = 10) {
    
    
    union() {
        
        // Stack
        
        for ( i = [ 0 : count - 1 ] ) { 
            translate(v = [0, 0, i * (shield_height + inter_layer_support_height)])
            face_shield();
            if (i < count - 1) {
                translate(v = [0, 0, (i * (shield_height + inter_layer_support_height))])
                shield_layer_separators();
            }
        }
        
        // Feet
        
        $fn = 35;
        
        // Left
        
        translate(v = [(mask_width / 2) - 9.5, 5, lily_pad_height / 2])
        cylinder(h = lily_pad_height, r = lily_pad_radius, center = true);
        
        translate(v = [(mask_width / 2) - 3.5, 75, lily_pad_height / 2])
        cylinder(h = lily_pad_height, r = lily_pad_radius, center = true);
        
        // Right
        
        translate(v = [-(mask_width / 2) + 9.5, 5, lily_pad_height / 2])
        cylinder(h = lily_pad_height, r = lily_pad_radius, center = true);
        
        translate(v = [-(mask_width / 2) + 3.5, 75, lily_pad_height / 2])
        cylinder(h = lily_pad_height, r = lily_pad_radius, center = true);
        
        // Middle
        
        translate(v = [0, mask_depth - 4, lily_pad_height / 2])
        cylinder(h = lily_pad_height, r = lily_pad_radius, center = true);
        
        translate(v = [0, mask_depth - 44, lily_pad_height / 2])
        cylinder(h = lily_pad_height, r = lily_pad_radius, center = true);
    
    }
}

module face_shield() {
    import(file_path, convexity=3);
}

module shield_layer_separators() {
    
    // Front left pillar

    translate(v = [middle_pillar_width_offset, mask_depth - pillar_depth_offset, (shield_height / 2) + 1])
    cube(size = [pillar_width, pillar_length, pillar_height], center = true);
    
    // Front right pillar
    
    translate(v = [-middle_pillar_width_offset, mask_depth - pillar_depth_offset, (shield_height / 2) + 1])
    cube(size = [pillar_width, pillar_length, pillar_height], center = true);
    
    // Back left pillar
    
    translate(v = [(mask_width / 2) - 3.6, (mask_depth / 2) + 12.9, (shield_height / 2) + 1])
    cube(size = [pillar_length, pillar_width, pillar_height], center = true);
    
    // Back right pillar
    
    translate(v = [-(mask_width / 2) + 3.6, (mask_depth / 2) + 12.9, (shield_height / 2) + 1])
    cube(size = [pillar_length, pillar_width, pillar_height], center = true);
    
    $fn = 20;
    
    // Middle
    
    translate([0, mask_depth - 4.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([0, mask_depth - 44.4, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Front left
    
    translate([middle_pillar_width_offset, mask_depth - 9, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([middle_pillar_width_offset, mask_depth - 49, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([middle_pillar_width_offset / 2, mask_depth - 5.7, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([middle_pillar_width_offset / 2, mask_depth - 45.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Front right
    
    translate([-middle_pillar_width_offset, mask_depth - 9, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-middle_pillar_width_offset, mask_depth - 49, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([- (middle_pillar_width_offset / 2), mask_depth - 5.7, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([- (middle_pillar_width_offset / 2), mask_depth - 45.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Middle left
    
    translate([(mask_width / 4) + 3.5, mask_depth - 19.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Middle right
    
    translate([-(mask_width / 4) - 3.5, mask_depth - 19.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Middle back left
    
    translate([(mask_width / 4) + 24.5, mask_depth - 36, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 4) + 21, mask_depth - 39, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Middle back right
    
    translate([-(mask_width / 4) - 24.5, mask_depth - 36, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 4) - 21, mask_depth - 39, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Left 
    
    translate([(mask_width / 2) - 4.8, mask_depth - 64, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 14.0, mask_depth - 64, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 37.5, mask_depth - 64, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 50.0, mask_depth - 55.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 25.0, mask_depth - 77, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Right
    
    translate([-(mask_width / 2) + 4.8, mask_depth - 64, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 14.0, mask_depth - 64, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 37.5, mask_depth - 64, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 50.0, mask_depth - 55.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 25.0, mask_depth - 77, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Back left
    
    translate([(mask_width / 2) - 10, mask_depth - 93.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 15.3, mask_depth - 93.8, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 12.1, mask_depth - 104, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 9.9, 3.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([(mask_width / 2) - 9.9, 23.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    // Back right
    
    translate([-(mask_width / 2) + 10, mask_depth - 93.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 15.3, mask_depth - 93.8, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 12.1, mask_depth - 104, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 9.9, 3.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
    translate([-(mask_width / 2) + 9.9, 23.5, shield_height])
    cylinder(h = inter_layer_support_height, d = wall_width);
    
}

