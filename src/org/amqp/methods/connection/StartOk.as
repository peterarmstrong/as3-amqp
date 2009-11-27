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
    public class StartOk extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _clientproperties:Map = new HashMap();
         private var _mechanism:String = "";
         private var _response:LongString = new ByteArrayLongString(new ByteArray());
         private var _locale:String = "";

         public function get clientproperties():Map {return _clientproperties;}
         public function get mechanism():String {return _mechanism;}
         public function get response():LongString {return _response;}
         public function get locale():String {return _locale;}

         public function set clientproperties(x:Map):void {_clientproperties = x;}
         public function set mechanism(x:String):void {_mechanism = x;}
         public function set response(x:LongString):void {_response = x;}
         public function set locale(x:String):void {_locale = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }


         override public function isBottomHalf():Boolean {
             return true;
         }

         override public function getClassId():int{
             return 10;
         }

         override public function getMethodId():int{
             return 11;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeTable(_clientproperties);
             writer.writeShortstr(_mechanism);
             writer.writeLongstr(_response);
             writer.writeShortstr(_locale);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _clientproperties = reader.readTable();
             _mechanism = reader.readShortstr();
             _response = reader.readLongstr();
             _locale = reader.readShortstr();
         }

         public function dump():void {
             trace("-------- connection.StartOk --------");
             trace("clientproperties: {" + _clientproperties + "}");
             trace("mechanism: {" + _mechanism + "}");
             trace("response: {" + _response + "}");
             trace("locale: {" + _locale + "}");
         }
    }
}