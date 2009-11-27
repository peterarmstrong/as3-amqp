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
    public class Open extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _virtualhost:String = "";
         private var _capabilities:String = "";
         private var _insist:Boolean = false;

         public function get virtualhost():String {return _virtualhost;}
         public function get capabilities():String {return _capabilities;}
         public function get insist():Boolean {return _insist;}

         public function set virtualhost(x:String):void {_virtualhost = x;}
         public function set capabilities(x:String):void {_capabilities = x;}
         public function set insist(x:Boolean):void {_insist = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function getResponse():Method {
             return new OpenOk();
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 10;
         }

         override public function getMethodId():int{
             return 40;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShortstr(_virtualhost);
             writer.writeShortstr(_capabilities);
             writer.writeBit(_insist);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _virtualhost = reader.readShortstr();
             _capabilities = reader.readShortstr();
             _insist = reader.readBit();
         }

         public function dump():void {
             trace("-------- connection.Open --------");
             trace("virtualhost: {" + _virtualhost + "}");
             trace("capabilities: {" + _capabilities + "}");
             trace("insist: {" + _insist + "}");
         }
    }
}