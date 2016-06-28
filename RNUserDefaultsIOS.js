'use strict';

var { NativeModules } = require('react-native');
const promisify = require("es6-promisify")
var UserDefaults = NativeModules.RNUserDefaultsIOS;

var _setObjectForKey = promisify(UserDefaults.setObjectForKey);
var _setBoolForKey = promisify(UserDefaults.setBoolForKey);

var _arrayForKey = promisify(UserDefaults.arrayForKey);
var _stringForKey = promisify(UserDefaults.stringForKey);
var _objectForKey = promisify(UserDefaults.objectForKey);
var _boolForKey = promisify(UserDefaults.boolForKey);

var _removeItemForKey = promisify(UserDefaults.removeObjectForKey);
var _getAllKeys = promisify(UserDefaults.getAllKeys);

var UserDefaults = {
    setArrayForKey(array, key) {
        return _setObjectForKey(array, key);
    },
    setStringForKey(string, key) {
        return _setObjectForKey(string, key);
    },
    setObjectForKey(object, key) {
        return _setObjectForKey(object, key);
    },
    setBoolForKey(bool, key) {
        return _setBoolForKey(bool, key);
    },
    arrayForKey(key) {
        return _arrayForKey(key);
    },
    stringForKey(key) {
        return _stringForKey(key);
    },
    objectForKey(key) {
        return _objectForKey(key);
    },
    boolForKey(key) {
        return _boolForKey(key);
    },
    removeItemForKey(key) {
        return _removeItemForKey(key);
    },
    getAllKeys(key) {
        return _getAllKeys(key);
    }
};

module.exports = UserDefaults;
