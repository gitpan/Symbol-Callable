use Test;
BEGIN { plan tests => 7 };
ok(1);
use Symbol::Callable;
use English;
$_=join' ',probesym(),probesym('English');
ok(/ok/);
ok(/probe/);
ok(/plan/);
ok(/skip/);
ok(/import/);
ok(/VERSION/);