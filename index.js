import React, { Component } from 'react';
import {
  Alert, 
  Platform,
  StyleSheet,
  Text,
  View,
  Button,
  AppRegistry,
  NativeEventEmitter
} from 'react-native';

export default class TestView extends Component<{}> {

  _onPressButton() {
    var React = require('react-native');
    React.NativeModules.MyNativeModule.triggerJSRequest();
  }
  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.welcome}>
          Welcome to React Native! Hello world
        </Text>
        <Button
            onPress={this._onPressButton}
            title="Press Me"
          />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
});

AppRegistry.registerComponent('TestView', () => TestView);

// var React = require('react-native');
//     React.NativeModules.ReactNativeJSSwift.triggerJSRequest();
// AppRegistry.registerComponent('ReactNativeRNSwift', () => App);

// AppRegistry.registerComponent('ReactNativeRNSwift', () => App);
// var React = require('react-native');
// // console.dir(React.NativeModules.ReactNativeRNSwift);

// // const myModuleEvt = new NativeEventEmitter(React.NativeModules.ReactNativeRNSwift)
// // var subscription = myModuleEvt.addListener(
// //   'EventReminder',
// //     (reminder) => {
// //         console.log('EVENT');
// //         console.log('name: ' + reminder.name);
// //     }
// // );

// React.NativeModules.ReactNativeJSSwift.triggerJSRequest();