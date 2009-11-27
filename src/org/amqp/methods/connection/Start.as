/**
 * ---------------------------------------------------------------------------
 *   Copyright (C) 2008 0x6e6562
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * ---------------------------------------------------------------------------
 **/
package org.amqp.methods.connection
{
    import org.amqp.Method;
    import org.amqp.LongString;
    import org.amqp.methods.ArgumentReader;
    import org.amqp.methods.ArgumentWriter;
    import org.amqp.methods.MethodArgumentReader;
    import org.amqp.methods.MethodArgumentWriter;
    import com.ericfeminella.utils.Map;
    import com.ericfeminella.utils.HashMap;
    import org.amqp.impl.ByteArrayLongString;
    import flash.utils.ByteArray;

    /**
     *   THIS IS AUTO-GENERATED CODE. DO NOT EDIT!
     **/
    public class Start extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _versionmajor:int = 0;
         private var _versionminor:int = 0;
         private var _serverproperties:Map = new HashMap();
         private var _mechanisms:LongString = new ByteArrayLongString(new ByteArray());
         private var _locales:LongString = new ByteArrayLongString(new ByteArray());

         public function get versionmajor():int {return _versionmajor;}
         public function get versionminor():int {return _versionminor;}
         public function get serverproperties():Map {return _serverproperties;}
         public function get mechanisms():LongString {return _mechanisms;}
         public function get locales():LongString {return _locales;}

         public function set versionmajor(x:int):void {_versionmajor = x;}
         public function set versionminor(x:int):void {_versionminor = x;}
         public function set serverproperties(x:Map):void {_serverproperties = x;}
         public function set mechanisms(x:LongString):void {_mechanisms = x;}
         public function set locales(x:LongString):void {_locales = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function getResponse():Method {
             return new StartOk();
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 10;
         }

         override public function getMethodId():int{
             return 10;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeOctet(_versionmajor);
             writer.writeOctet(_versionminor);
             writer.writeTable(_serverproperties);
             writer.writeLongstr(_mechanisms);
             writer.writeLongstr(_locales);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _versionmajor = reader.readOctet();
             _versionminor = reader.readOctet();
             _serverproperties = reader.readTable();
             _mechanisms = reader.readLongstr();
             _locales = reader.readLongstr();
         }

         public function dump():void {
             trace("-------- connection.Start --------");
             trace("versionmajor: {" + _versionmajor + "}");
             trace("versionminor: {" + _versionminor + "}");
             trace("serverproperties: {" + _serverproperties + "}");
             trace("mechanisms: {" + _mechanisms + "}");
             trace("locales: {" + _locales + "}");
         }
    }
}