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
package org.amqp.methods.channel
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
    public class Alert extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _replycode:int = 0;
         private var _replytext:String = "";
         private var _details:Map = new HashMap();

         public function get replycode():int {return _replycode;}
         public function get replytext():String {return _replytext;}
         public function get details():Map {return _details;}

         public function set replycode(x:int):void {_replycode = x;}
         public function set replytext(x:String):void {_replytext = x;}
         public function set details(x:Map):void {_details = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }


         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 20;
         }

         override public function getMethodId():int{
             return 30;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShort(_replycode);
             writer.writeShortstr(_replytext);
             writer.writeTable(_details);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _replycode = reader.readShort();
             _replytext = reader.readShortstr();
             _details = reader.readTable();
         }

         public function dump():void {
             trace("-------- channel.Alert --------");
             trace("replycode: {" + _replycode + "}");
             trace("replytext: {" + _replytext + "}");
             trace("details: {" + _details + "}");
         }
    }
}