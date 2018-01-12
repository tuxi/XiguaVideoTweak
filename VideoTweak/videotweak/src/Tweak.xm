/* How to Hook with Logos
Hooks are written with syntax similar to that of an Objective-C @implementation.
You don't need to #include <substrate.h>, it will be done automatically, as will
the generation of a class list and an automatic constructor.

%hook TTFQuizShowLiveRoomViewController

- (void)viewDidAppear:(BOOL)animated {
%orig;
[self helloWorld];
}

%new
- (void)helloWorld {
UIAlertController *alc = [UIAlertController alertControllerWithTitle:@"hello world" message:nil preferredStyle:UIAlertControllerStyleActionSheet];
[alc addAction:[UIAlertAction actionWithTitle:@"ok" style:UIAlertActionStyleDefault handler:NULL]];
[alc addAction:[UIAlertAction actionWithTitle:@"cancel" style:UIAlertActionStyleCancel handler:NULL]];
[self presentViewController:alc animated:YES completion:NULL];
}

%end

