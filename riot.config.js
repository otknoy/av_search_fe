import buble from 'buble';

export default {
  type: 'buble',
  parsers: {
    js: {
      buble: js => buble.transform(js)
    }
  }
};
