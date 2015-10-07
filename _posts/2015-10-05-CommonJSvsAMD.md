---
layout: post
title:  "CommonJS vs AMD"
date:   2015-10-05
categories: Javascript CommonJS AMD
comments: true
---

# AMD

```javascript
// use another module
define(['myPackage/myLib'], function(myLib) {
    function foo(){
        console.log('foo');
        myLib.doSomething();
    }
 
    // expose module API
    return {
        foo : foo
    };
});
```

* 비동기 환경에서 잘 동작한다.
* Lazy-Load 가 가능하다.
* 전역 네임스페이스 오염 문제가 없다.


# CommonJS

```javascript
// use another module
var myLib = require('myPackage/myLib');
 
function foo(){
    console.log('foo');
    myLib.doSomething();
}
 
// expose module API
exports.foo = foo;
```

* 비교적 코드가 간결하다.
* 서버 환경에 어울린다.