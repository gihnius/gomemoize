# gomemoize

Cache function calls in Go. Simple without reflect, easy to use.

# usage

``` go
import "memoize"
// cache a function call for TimeOut (>= 0) seconds
memoize.Memoize("Cache_Key", func() interface{} {
  cache_return_value, err := your_function(args)
  if err != nil {
    // handle err
    // won't cache if return nil
    return nil
  }
  return cache_return_value
}, TimeOut)

// save result
result := memoize.Memoize("Cache_Key", func() interface{} {
  // call your function(s)
  cache_return_value, err := your_function(args)
  if err != nil {
    // handle err
    // won't cache if return nil
    return nil
  }
  return cache_return_value
}, TimeOut).(your_function_return_type)
```

# test

```
git clone https://github.com/gihnius/gomemoize
cd gomemoize
./test.sh
# or
VERBOSE="-v" ./test.sh
```
