# Godot 2.1 only passes platform. Godot 3+ build passes env, platform
def can_build(*argv):
	platform = argv[1] if len(argv) == 2 else argv[0]
	return platform=="iphone"

def configure(env):
	if env['platform'] == "iphone":
		xcframework_arch_directory = ''
		if env['arch'] == 'x86_64':
			xcframework_arch_directory = 'ios-x86_64-simulator'
		else:
			xcframework_arch_directory = 'ios-armv7_arm64'

		env.Append(CPPPATH=['#core'])
		env.Append(LINKFLAGS=[
			'-ObjC',
			'-framework', 'StoreKit'
            ])
