/*
 * Copyright (c) 2018-2023 REV Robotics
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of REV Robotics nor the names of its
 *    contributors may be used to endorse or promote products derived from
 *    this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#pragma once

#include "CANSparkBase.h"
#include "rev/SparkMaxAlternateEncoder.h"

namespace rev {

class CANSparkBase;

class CANSparkMax : public CANSparkBase {
    friend class SparkMaxAlternateEncoder;

public:
    /**
     * Create a new object to control a SPARK MAX motor Controller
     *
     * @param deviceID The device ID.
     * @param type     The motor type connected to the controller. Brushless
     *                 motor wires must be connected to their matching colors,
     * and the hall sensor must be plugged in. Brushed motors must be connected
     *                 to the Red and Black terminals only.
     */
    explicit CANSparkMax(int deviceID, MotorType type);

    /**
     * Create a new object to control a SPARK MAX motor Controller
     *
     * @param deviceID The device ID.
     * @param type     The motor type connected to the controller. Brushless
     *                 motor wires must be connected to their matching colors,
     * and the hall sensor must be plugged in. Brushed motors must be connected
     *                 to the Red and Black terminals only.
     *
     * @deprecated Use CANSparkMax(int, CANSparkLowLevel::MotorType) instead
     */
    WPI_DEPRECATED("Use CANSparkMax(int, CANSparkLowLevel::MotorType) instead")
    explicit CANSparkMax(int deviceID, CANSparkMaxLowLevel::MotorType type);

    /**
     * Closes the SPARK MAX Controller
     */
    ~CANSparkMax() override = default;

    /**
     * Returns an object for interfacing with a quadrature encoder connected to
     * the alternate encoder mode data port pins. These are defined as:
     *
     * Pin 4 (Forward Limit Switch): Index
     * Pin 6 (Multi-function): Encoder A
     * Pin 8 (Reverse Limit Switch): Encoder B
     *
     * This call will disable support for the limit switch inputs.
     */
    SparkMaxAlternateEncoder GetAlternateEncoder(int countsPerRev);

    /**
     * Returns an object for interfacing with a quadrature encoder connected to
     * the alternate encoder mode data port pins. These are defined as:
     *
     * Pin 4 (Forward Limit Switch): Index
     * Pin 6 (Multi-function): Encoder A
     * Pin 8 (Reverse Limit Switch): Encoder B
     *
     * This call will disable support for the limit switch inputs.
     */
    SparkMaxAlternateEncoder GetAlternateEncoder(
        SparkMaxAlternateEncoder::Type encoderType, int countsPerRev);

    /**
     * Returns an object for interfacing with a quadrature encoder connected to
     * the alternate encoder mode data port pins. These are defined as:
     *
     * Pin 4 (Forward Limit Switch): Index
     * Pin 6 (Multi-function): Encoder A
     * Pin 8 (Reverse Limit Switch): Encoder B
     *
     * This call will disable support for the limit switch inputs.
     *
     * @deprecated Use
     * CANSparkBase::GetAlternateEncoder(SparkMaxAlternateEncoder::Type, int)
     * instead
     */
    WPI_DEPRECATED(
        "Use GetAlternateEncoder(SparkMaxAlternateEncoder::Type, int) "
        "instead")
    SparkMaxAlternateEncoder GetAlternateEncoder(
        CANEncoder::AlternateEncoderType encoderType, int countsPerRev);

private:
    std::atomic<bool> m_alternateEncoderCreated{false};
};

}  // namespace rev
