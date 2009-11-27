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
package org.amqp.methods.queue
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
    public class Declare extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _ticket:int = 0;
         private var _queue:String = "";
         private var _passive:Boolean = false;
         private var _durable:Boolean = false;
         private var _exclusive:Boolean = false;
         private var _autodelete:Boolean = false;
         private var _nowait:Boolean = false;
         private var _arguments:Map = new HashMap();

         public function get ticket():int {return _ticket;}
         public function get queue():String {return _queue;}
         public function get passive():Boolean {return _passive;}
         public function get durable():Boolean {return _durable;}
         public function get exclusive():Boolean {return _exclusive;}
         public function get autodelete():Boolean {return _autodelete;}
         public function get nowait():Boolean {return _nowait;}
         public function get arguments():Map {return _arguments;}

         public function set ticket(x:int):void {_ticket = x;}
         public function set queue(x:String):void {_queue = x;}
         public function set passive(x:Boolean):void {_passive = x;}
         public function set durable(x:Boolean):void {_durable = x;}
         public function set exclusive(x:Boolean):void {_exclusive = x;}
         public function set autodelete(x:Boolean):void {_autodelete = x;}
         public function set nowait(x:Boolean):void {_nowait = x;}
         public function set arguments(x:Map):void {_arguments = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }

         override public function getResponse():Method {
             return new DeclareOk();
         }

         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 50;
         }

         override public function getMethodId():int{
             return 10;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeShort(_ticket);
             writer.writeShortstr(_queue);
             writer.writeBit(_passive);
             writer.writeBit(_durable);
             writer.writeBit(_exclusive);
             writer.writeBit(_autodelete);
             writer.writeBit(_nowait);
             writer.writeTable(_arguments);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _ticket = reader.readShort();
             _queue = reader.readShortstr();
             _passive = reader.readBit();
             _durable = reader.readBit();
             _exclusive = reader.readBit();
             _autodelete = reader.readBit();
             _nowait = reader.readBit();
             _arguments = reader.readTable();
         }

         public function dump():void {
             trace("-------- queue.Declare --------");
             trace("ticket: {" + _ticket + "}");
             trace("queue: {" + _queue + "}");
             trace("passive: {" + _passive + "}");
             trace("durable: {" + _durable + "}");
             trace("exclusive: {" + _exclusive + "}");
             trace("autodelete: {" + _autodelete + "}");
             trace("nowait: {" + _nowait + "}");
             trace("arguments: {" + _arguments + "}");
         }
    }
}