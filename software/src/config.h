/* ambient-light-v2-bricklet
 * Copyright (C) 2015 Olaf Lüke <olaf@tinkerforge.com>
 *
 * config.h: Ambient Light Bricklet specific configuration
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the
 * Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 */

#ifndef CONFIG_H
#define CONFIG_H

#include <stdint.h>
#include <stdbool.h>

#include "bricklib/drivers/board/sam3s/SAM3S.h"

#include "ambient-light.h"

#define BRICKLET_FIRMWARE_VERSION_MAJOR 2
#define BRICKLET_FIRMWARE_VERSION_MINOR 0
#define BRICKLET_FIRMWARE_VERSION_REVISION 2

#define BRICKLET_HARDWARE_VERSION_MAJOR 2
#define BRICKLET_HARDWARE_VERSION_MINOR 0
#define BRICKLET_HARDWARE_VERSION_REVISION 0

#define BRICKLET_DEVICE_IDENTIFIER 259

#define BOARD_MCK 64000000

#define PIN_SDA (BS->pin1_ad)
#define PIN_SCL (BS->pin2_da)

#define MAX_ADC_VALUE ((1  << 12) - 1)
#define MAX_VOLTAGE 3300

#define LOGGING_LEVEL LOGGING_DEBUG
#define DEBUG_BRICKLET 0

#define BRICKLET_VALUE_APPLIED_OUTSIDE
#define BRICKLET_HAS_SIMPLE_SENSOR
#define BRICKLET_NO_OFFSET
#define INVOCATION_IN_BRICKLET_CODE
#define SIMPLE_VALUE_TYPE uint32_t
#define NUM_SIMPLE_VALUES 1

typedef struct {
	int32_t value[NUM_SIMPLE_VALUES];
	int32_t last_value[NUM_SIMPLE_VALUES];

	uint32_t signal_period[NUM_SIMPLE_VALUES];
	uint32_t signal_period_counter[NUM_SIMPLE_VALUES];

	uint32_t threshold_debounce;
	uint32_t threshold_period_current[NUM_SIMPLE_VALUES];
	int32_t  threshold_min[NUM_SIMPLE_VALUES];
	int32_t  threshold_max[NUM_SIMPLE_VALUES];
	char     threshold_option[NUM_SIMPLE_VALUES];

	int32_t  threshold_min_save[NUM_SIMPLE_VALUES];
	int32_t  threshold_max_save[NUM_SIMPLE_VALUES];
	char     threshold_option_save[NUM_SIMPLE_VALUES];

	uint32_t tick;

	uint8_t integration_time;
	uint8_t illuminance_range;
	uint8_t data_counter;
	bool throw_next_data_away;
} BrickContext;

#endif
