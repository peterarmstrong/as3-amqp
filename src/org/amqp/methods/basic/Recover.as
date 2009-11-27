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
package org.amqp.methods.basic
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
    public class Recover extends Method implements ArgumentReader, ArgumentWriter
    {
         private var _requeue:Boolean = false;

         public function get requeue():Boolean {return _requeue;}

         public function set requeue(x:Boolean):void {_requeue = x;}

         override public function hasResponse():Boolean {
             return null != getResponse();
         }


         override public function isBottomHalf():Boolean {
             return false;
         }

         override public function getClassId():int{
             return 60;
         }

         override public function getMethodId():int{
             return 100;
         }

         override public function writeArgumentsTo(writer:MethodArgumentWriter):void {
             writer.writeBit(_requeue);
         }

         override public function readArgumentsFrom(reader:MethodArgumentReader):void {
             _requeue = reader.readBit();
         }

         public function dump():void {
             trace("-------- basic.Recover --------");
             trace("requeue: {" + _requeue + "}");
         }
    }
}