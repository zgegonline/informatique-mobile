/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

// Wait for the deviceready event before using any of Cordova's device APIs.
// See https://cordova.apache.org/docs/en/latest/cordova/events/events.html#deviceready

import { defineCustomElements } from '@ionic/pwa-elements/loader';
ReactDOM.render(<App />, document.getElementById('root'));
// Invoquer le chargement des éléments après l'affichage de l'application
defineCustomElements(window);

import { Plugins } from '@capacitor/core';
const position = await Plugins.Geolocation.getCurrentPosition();


document.addEventListener('deviceready', onDeviceReady, false);
document.addEventListener('deviceInfos', deviceInfos, false);

function onDeviceReady() {
    // Cordova is now initialized. Have fun!

    console.log('Running cordova-' + cordova.platformId + '@' + cordova.version);
    document.getElementById('deviceready').classList.add('ready');
    document.getElementById('cordova').innerHTML = "CORDOVA : " + device.cordova;
    document.getElementById('model').innerHTML = "MODEL : " + device.model;
    document.getElementById('uuid').innerHTML = "UUID" + device.uuid;


}
function deviceInfos() {
    var model = device.model;
  }
