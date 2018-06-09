// ******************************************************************************
// Spine Runtimes Software License v2.5
//
// Copyright (c) 2013-2016, Esoteric Software
// All rights reserved.
//
// You are granted a perpetual, non-exclusive, non-sublicensable, and
// non-transferable license to use, install, execute, and perform the Spine
// Runtimes software and derivative works solely for personal or internal
// use. Without the written permission of Esoteric Software (see Section 2 of
// the Spine Software License Agreement), you may not (a) modify, translate,
// adapt, or develop new applications using the Spine Runtimes or otherwise
// create derivative works or improvements of the Spine Runtimes or (b) remove,
// delete, alter, or obscure any trademarks or any copyright, trademark, patent,
// or other intellectual property or proprietary rights notices on or in the
// Software, including any copy thereof. Redistributions in binary or source
// form must include this license and terms.
//
// THIS SOFTWARE IS PROVIDED BY ESOTERIC SOFTWARE "AS IS" AND ANY EXPRESS OR
// IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO
// EVENT SHALL ESOTERIC SOFTWARE BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
// PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES, BUSINESS INTERRUPTION, OR LOSS OF
// USE, DATA, OR PROFITS) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
// IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
// POSSIBILITY OF SUCH DAMAGE.
// ******************************************************************************

import 'package:spine_core/spine_core.dart';
import 'package:test/test.dart';

void main() {
  group('A group of ArrayUtils tests', () {
    test('arrayCopy Test1', () {
      final List<int> source = <int>[0, 1, 2, 3];
      final List<int> dest = <int>[];
      ArrayUtils.arrayCopy(source, 2, dest, 0, 2);

      expect(dest, <int>[2, 3]);
    });

    test('arrayCopy Test2', () {
      final List<int> source = <int>[0, 1, 2, 3];
      final List<int> dest = <int>[4, 5, 6, 7, 8];
      ArrayUtils.arrayCopy(source, 1, dest, 1, 2);

      expect(dest, <int>[4, 1, 2, 7, 8]);
    });

    test('setArrayValue Test1', () {
      final List<int> array = <int>[0, 1, 2];
      ArrayUtils.setArrayValue(array, 1, 3);

      expect(array, <int>[0, 3, 2]);
    });

    test('setArrayValue Test2', () {
      final List<int> array = <int>[];
      ArrayUtils.setArrayValue(array, 2, 1);

      expect(array, <int>[null, null, 1]);
    });

    test('setArraySize Test1', () {
      final List<int> array = <int>[];
      ArrayUtils.setArraySize(array, 3, 5);

      expect(array, <int>[5, 5, 5]);
    });

    test('setArraySize Test2', () {
      final List<int> array = <int>[1, 2, 3];
      ArrayUtils.setArraySize(array, 3, 5);

      expect(array, <int>[1, 2, 3]);
    });

    test('setArraySize Test3', () {
      final List<int> array = <int>[1, 2, 3];
      ArrayUtils.setArraySize(array, 2, 5);

      expect(array, <int>[1, 2]);
    });

    test('setArraySize Test4', () {
      final List<int> array = <int>[1, 2, 3];
      ArrayUtils.setArraySize(array, 4, 5);

      expect(array, <int>[1, 2, 3, 5]);
    });

    test('ensureArrayCapacity Test1', () {
      final List<int> array = <int>[];
      ArrayUtils.ensureArrayCapacity(array, 3, 5);

      expect(array, <int>[5, 5, 5]);
    });

    test('ensureArrayCapacity Test2', () {
      final List<int> array = <int>[1, 2, 3];
      ArrayUtils.ensureArrayCapacity(array, 3, 5);

      expect(array, <int>[1, 2, 3]);
    });

    test('ensureArrayCapacity Test3', () {
      final List<int> array = <int>[1, 2, 3];
      ArrayUtils.ensureArrayCapacity(array, 2, 5);

      expect(array, <int>[1, 2, 3]);
    });
  });

  group('A group of MathUtils tests', () {
    test('radiansToDegrees Test', () {
      expect(MathUtils.radiansToDegrees, 57.29577951308232);
    });

    test('radDeg Test', () {
      expect(MathUtils.radDeg, 57.29577951308232);
    });

    test('radiansToDegrees Test', () {
      expect(MathUtils.degreesToRadians, 0.017453292519943295);
    });

    test('radiansToDegrees Test', () {
      expect(MathUtils.degRad, 0.017453292519943295);
    });

    test('clamp Test1', () {
      expect(MathUtils.clamp(1.0, 2.0, 3.0), 2.0);
    });

    test('clamp Test2', () {
      expect(MathUtils.clamp(2.0, 1.0, 3.0), 2.0);
    });

    test('clamp Test3', () {
      expect(MathUtils.clamp(3.0, 1.0, 2.0), 2.0);
    });

    test('cosDeg Test', () {
      expect(MathUtils.cosDeg(180.0), -1.0);
    });

    test('sinDeg Test', () {
      expect(MathUtils.sinDeg(90.0), 1.0);
    });

    test('signum Test1', () {
      expect(MathUtils.signum(12.0), 1.0);
    });

    test('signum Test2', () {
      expect(MathUtils.signum(-2.0), -1.0);
    });

    test('signum Test3', () {
      expect(MathUtils.signum(0.0), 0.0);
    });

    test('cbrt Test1', () {
      expect(MathUtils.cbrt(-1.0), -1.0);
    });

    test('cbrt Test2', () {
      expect(MathUtils.cbrt(0.0), 0.0);
    });

    test('cbrt Test3', () {
      expect(MathUtils.cbrt(1.0), 1.0);
    });

    test('cbrt Test4', () {
      expect(MathUtils.cbrt(2.0), 1.2599210498948732);
    });
  });
}
