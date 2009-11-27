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
    public class Redirect extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _host:String = "";
         private var _knownhosts:String = "";

         public function get host():String {return _host;}
         public function get knownhosts():String {return _knownhosts;}

         public function set host(x:String):void {_host = x;}
         public function set knownhosts(x:String):void {_knownhosts = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }


         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 10;
         }

         override public function getMethodId():int{
             return 50;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShortstr(_host);
             writer.writeShortstr(_knownhosts);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _host = reader.readShortstr();
             _knownhosts = reader.readShortstr();
         }

         public function dump():void {
             trace("-------- connection.Redirect --------");
             trace("host: {" + _host + "}");
             trace("knownhosts: {" + _knownhosts + "}");
         }
    }
}