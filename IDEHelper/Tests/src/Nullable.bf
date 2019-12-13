using System;

namespace Tests
{
	class Nullable
	{

		[Test]
		public static void TestPrimitives()
		{
			float? fn = 9.0f;
			int? intn = 100;
			int? intn2 = null;

			let fn2 = fn + intn;
			Test.Assert(fn2 == 109);

			let fn3 = fn + intn2;
			Test.Assert(fn3 == null);

			int i = intn ?? 200;
			Test.Assert(i == 100);

			i = intn2 ?? (int16)200;
			Test.Assert(i == 200);

			i = 300;
			Test.Assert(intn.TryGetValue(ref i));
			Test.Assert(i == 100);

			Test.Assert(!intn2.TryGetValue(ref i));
			Test.Assert(i == 100);
		}
	}
}
