// jika yang di butuhkan event tidak kompleks gunakan enum
// enum CounterEvent { decrement, increment }

// jika event yang dibutuhkan komplek perlu adanya suatu value dari luar gunakan class
// dengan menggunakan event class dapat menerima sebuah value dari luar
class CounterEvent {
  int value;
  CounterEvent(this.value);
}

class IncrementCounter extends CounterEvent {
  IncrementCounter(int value) : super(value);
}

class DecrementCounter extends CounterEvent {
  DecrementCounter(int value) : super(value);
}
